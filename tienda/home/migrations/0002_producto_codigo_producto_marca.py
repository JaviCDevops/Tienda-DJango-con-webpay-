# Generated by Django 5.0.1 on 2024-05-26 02:12

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='producto',
            name='codigo',
            field=models.CharField(blank=True, max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='producto',
            name='marca',
            field=models.CharField(blank=True, max_length=100, null=True),
        ),
    ]
