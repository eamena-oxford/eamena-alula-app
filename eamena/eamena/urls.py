'''
ARCHES - a program developed to inventory and manage immovable cultural heritage.
Copyright (C) 2013 J. Paul Getty Trust and World Monuments Fund

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as
published by the Free Software Foundation, either version 3 of the
License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License
along with this program. If not, see <http://www.gnu.org/licenses/>.
'''

from arches import urls as arches_urls
#from django.conf import settings
from django.conf.urls import patterns, url, include

uuid_regex = '[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}'

urlpatterns = patterns('',
    url(r'^search$', 'eamena.views.search.home_page', name="search_home"),
    url(r'^search/resources$', 'eamena.views.search.search_results', name="search_results"),
    url(r'^search/export$', 'eamena.views.search.export_results', name="search_results_export"),
    url(r'^reports/(?P<resourceid>%s)$' % uuid_regex , 'eamena.views.resources.report', name='report'),
    url('^', include('django.contrib.auth.urls')),
    url(r'^search/overlaps', 'eamena.views.search.find_overlapping', name="find_overlapping_data"),
    url(r'^rdm/(?P<conceptid>%s|())$' % uuid_regex , 'eamena.views.concept.rdm', name='rdm'),
    url(r'^concepts/(?P<conceptid>%s|())$' % uuid_regex , 'eamena.views.concept.concept', name="concept"),
    url(r'', include(arches_urls)),
)

#if 'rosetta' in settings.INSTALLED_APPS:
#    urlpatterns += [
#       url(r'^rosetta/', include('rosetta.urls'))
#    ]

