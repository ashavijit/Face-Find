# Generated by Django 4.0.4 on 2022-05-26 13:35

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('people', '0013_missingperson_found_location'),
    ]

    operations = [
        migrations.RenameField(
            model_name='reportedperson',
            old_name='last_seen',
            new_name='reported_location',
        ),
    ]
