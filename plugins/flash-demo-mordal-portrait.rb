# -*- coding: utf-8 -*-
require 'yaml'

# Example:
#
# {{# flashModal_p }}
#   id     : flashMordal_globalLayer
#   caption: Play Demo
#   title  : Global Layer
#   swf    : "{{ urls.media }}/swf/krewsample/krew-sample-global-layer.swf"
# {{/ flashModal_p }}

module FlashDemoModal
  def flashModalPortrait(sub_context)

    params = YAML.load(sub_context)

    result_html = <<EOS
<!-- Button to trigger modal -->
<a href="##{params['id']}" role="button" class="btn flash-modal-btn" data-toggle="modal">
  <img class="btn-icon" src="{{urls.media}}/krewfw/krew_icon_small.png" width="28" height="28" />
  #{params['caption']}
</a>

<!-- Modal -->
<div id="#{params['id']}" class="modal hide fade play-flash-portrait" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
    <h4 class="flash-modal">#{params['title']}</h4>
    <ul class="flash-modal">
      <li>Required Flash Player 11 or later</li>
    </ul>
  </div>
  <div class="modal-body play-flash-portrait">

    <div align="center">
      <object width="400" height="600" data="#{params['swf']}" style="border: 1px solid #d0d0d0;">
        <param name="wmode" value="direct"/>
      </object>
    </div>

  </div>
  <div class="modal-footer">
    <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
  </div>
</div>
<br/><div class="clearfix"></div>
EOS
    result_html
  end
end

Ruhoh::Views::MasterView.__send__(:include, FlashDemoModal)
