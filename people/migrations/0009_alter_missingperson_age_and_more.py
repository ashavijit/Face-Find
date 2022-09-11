# Generated by Django 4.0.4 on 2022-05-24 09:49

from django.db import migrations, models
import phonenumber_field.modelfields


class Migration(migrations.Migration):

    dependencies = [
        ('people', '0008_merge_20220520_1911'),
    ]

    operations = [
        migrations.AlterField(
            model_name='missingperson',
            name='age',
            field=models.CharField(max_length=200, verbose_name='Age of Missing Person'),
        ),
        migrations.AlterField(
            model_name='missingperson',
            name='description',
            field=models.TextField(blank=True, max_length=1000, null=True, verbose_name='Any Other Important Details'),
        ),
        migrations.AlterField(
            model_name='missingperson',
            name='phone',
            field=phonenumber_field.modelfields.PhoneNumberField(max_length=128, region=None, verbose_name='Contact Number'),
        ),
        migrations.AlterField(
            model_name='missingperson',
            name='photo',
            field=models.ImageField(upload_to='missingpersons/', verbose_name='Upload Photo of Missing Person'),
        ),
        migrations.AlterField(
            model_name='missingperson',
            name='status',
            field=models.CharField(choices=[('New', 'New'), ('Leads', 'Leads'), ('Found', 'Found'), ('Closed', 'Closed')], default='New', max_length=200, verbose_name='Current Status'),
        ),
    ]
