{% set bodyClass = 'bg-white' %}

{% extends "swig/common/base.html" %}

{% block js_includes %}
    <script type="text/javascript" src="js/rainbowjs/js/rainbow.min.js"></script>
    <script type="text/javascript" src="js/rainbowjs/js/language/generic.js"></script>
    <script type="text/javascript" src="js/rainbowjs/js/language/javascript.js"></script>
    <script src="js/trumbowyg/dist/trumbowyg.min.js"></script>

        <script>
            $('#msgTextarea').trumbowyg({
                fullscreenable: true,
                closable: false,
                btns: ['bold', 'italic', 'underline', 'strikethrough', '|','unorderedList', 'orderedList','|','justifyLeft', 'justifyFull']
            });

        </script>
{% endblock %}

{% block css_includes %}
    <link rel="stylesheet" type="text/css" href="js/rainbowjs/themes/github.css">
    <link rel="stylesheet" type="text/css" href="js/trumbowyg/dist/ui/trumbowyg.min.css">
{% endblock %}

{% block navigation %}

    {% include 'swig/common/navigation.html' %}

{% endblock %}

{% block header %}

    {% include 'swig/blocks/block.forum.detail.header.html' %}

{% endblock %}

{% block content %}

    {% include 'swig/blocks/block.forum.detail.html' %}

    <div class="content-padding b-b-t-l">
        <div class="container">
            <div class="row">
                <div class="col-md-10 col-md-offset-1">
                    {% include 'swig/blocks/block.comment.html' %}
                </div>
            </div>
        </div>
    </div>

{% endblock %}

{% block footer %}

    {% include 'swig/common/footer.html' %}

{% endblock %}