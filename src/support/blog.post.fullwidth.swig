{% extends "swig/common/base.html" %}
{% set bodyClass = 'bg-white' %}

{% block css_includes %}
    
    <link rel="stylesheet" type="text/css" href="js/trumbowyg/dist/ui/trumbowyg.min.css">

{% endblock %}

{% block js_includes %}

    <script src="js/trumbowyg/dist/trumbowyg.min.js"></script>

    <script>
        $('#msgTextarea').trumbowyg({
            fullscreenable: true,
            closable: false,
            btns: ['bold', 'italic', 'underline', 'strikethrough', '|','unorderedList', 'orderedList','|','justifyLeft', 'justifyFull']
        });
    
    </script>

{% endblock %}

{% block navigation %}

    {% include 'swig/common/navigation.html' %}

{% endblock %}

{% block header %}

{% endblock %}

{% block content %}

    {% include 'swig/blocks/block.blog.post.fullwidth.html' %}
    

{% endblock %}

{% block footer %}

    {% include 'swig/common/footer.html' %}

{% endblock %}