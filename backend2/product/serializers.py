from rest_framework import serializers
from .models import Product


class ProductSerializer(serializers.ModelSerializer):

    image = serializers.SerializerMethodField()

    def get_image(self, obj):
        """
        Returns only the image file name instead of the full URL.
        """
        return obj.image.name if obj.image else None


    class Meta:
        model = Product
        fields = ['id', 'name', 'description', 'price', 'stock', 'image']
