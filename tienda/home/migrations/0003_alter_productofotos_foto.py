# Generated by Django 5.0.1 on 2024-05-26 03:11

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0002_producto_codigo_producto_marca'),
    ]

    operations = [
        migrations.AlterField(
            model_name='productofotos',
            name='foto',
            field=models.ImageField(default='200_200.png', upload_to='producto/'),
        ),
    ]
