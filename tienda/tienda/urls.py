from django.contrib import admin
from django.urls import path, include
from rest_framework import routers
from api_productos import views

router = routers.DefaultRouter()
router.register(r'productos', views.ViewSetProducto)

urlpatterns = [
    path('core/backend/', admin.site.urls),
    path('', include('home.urls'),name="home_urls"),
    path('acceso/', include('acceso.urls'),name="acceso_urls"),
    path('productos/', include('productos.urls'),name="productos_urls"),
    path('carro/', include('carro.urls'),name="carro_urls"),
    path('api/', include(router.urls)),
    path('api-auth/', include('rest_framework.urls', namespace='rest_framework')),
    path('todo/', include('todo.urls'),name="todo_urls"),
]
