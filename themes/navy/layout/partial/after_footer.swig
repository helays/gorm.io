<!-- Scripts -->
<!-- build:js build/js/main.js -->
{{ js('js/lang_select') }}
{{ js('js/toc') }}
{{ js('js/mobile_nav') }}

<script src="/static/lib/jquery/jquery-3.7.1.slim.min.js"></script>
{{ js('js/code_expander') }}
<!-- endbuild -->
{% if page.layout === 'plugins' %}
<!-- Plugin search -->
<script src="/static/lib/lunr.js/2.1.2/lunr.min.js"></script>

<!-- build:js build/js/plugins.js -->
{{ js('js/plugins') }}
<!-- endbuild -->
{% endif %}
<!-- Algolia -->
{% if config.algolia[page.lang] %}
<script src="/static/lib/docsearch/docsearch.min.js"></script>
<script type="text/javascript">
document.getElementById('search-input-wrap').classList.add('on');
docsearch({
  appId: '{{ config.algolia[page.lang].api_id }}',
  apiKey: '{{ config.algolia[page.lang].api_key }}',
  indexName: '{{ config.algolia[page.lang].index_name }}',
  inputSelector: '#search-input'
});
</script>
{% endif %}