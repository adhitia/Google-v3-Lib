 module Google
 def google_map(element, options = {})
        default_options = {
          :map_type => 'ROADMAP',
          :lat => 36.3,
          :lng => 11.9,
          :height => '400px',
          :width => '100%',
          :zoom => 2,
          :event => false,
          :display => 'head',
          :action => 'show',
          :search => false,
          :form_elements => 'asset',
          :class => 'mark_on_map_frame',
          :arrayPoint => false
        }

        @element = element.to_s
        @settings = default_options.merge(options).stringify_keys!
        content = ''

        display = @settings['display']
        case display.to_sym
        when :head
          content_for :google_maps do
            head = script_body
          end
        when :inline
          content << script_body
        end
        content << content_tag(:div, '', :class => @settings['class'], :id => (@settings['event'] ? (@settings['event'][:container].blank? ? @element : '') : @element), :style => "clear:both; width: #{@settings['width']}; height: #{@settings['height']}; margin:0 auto;")
      end
 def script_body
        <<-EOF
            <script type="text/javascript">

              var map;
              var geocoder;
              var centerLatitude  = #{@settings['lat']};
              var centerLongitude = #{@settings['lng']};
              var startZoom = #{@settings['zoom'] || 12};
              var iconCluster;
              var iconClusterShadow;
              var iconSingle;
              var iconSingleShadow;
              var bounds ;
              var iconOverlay = [];
              var incidentOverlay = [];
              var mapLayers = [];
              var clickType = 'default';
              var createMarker;
              var searchMarker = [];
              var searchInfo = [];
              var SearchIncidentMarker = []
              var IncidentMarkerLatLng = []
              google.setOnLoadCallback(init_maps);
              // Call this function when the page has been loaded
              function init_maps() {
                    var myOptions = {
                        center: new google.maps.LatLng(centerLatitude, centerLongitude),
                        zoom: startZoom,
                        mapTypeId: google.maps.MapTypeId.ROADMAP
                    };
               map = new google.maps.Map(document.getElementById("#{@element}"),myOptions);
               
              }

            </script>
        EOF
      end
 end