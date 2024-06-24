from django.shortcuts import render
from home.models import Producto
from api_productos.serializers import SerializadorProductos
from rest_framework import viewsets, permissions

class ViewSetProducto(viewsets.ModelViewSet):
    queryset = Producto.objects.all()
    serializer_class = SerializadorProductos
    permission_classes = [permissions.IsAuthenticated]

    def get_queryset(self):
        queryset = Producto.objects.all()
        producto_id = self.request.query_params.get('id', None)
        if producto_id is not None:
            queryset = queryset.filter(id=producto_id)
        return queryset

def api_view(request):
    return render(request, 'api/api.html')
