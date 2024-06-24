# serializers.py
from home.models import Producto
from rest_framework.serializers import HyperlinkedModelSerializer

class SerializadorProductos(HyperlinkedModelSerializer):
    class Meta:
        model = Producto
        fields = ['nombre', 'descripcion', 'stock', 'precio']
