{% set bodyClass = 'bg-white' %}

{% extends "swig/common/base.html" %}

{% block js_includes %}
    <script type="text/javascript" src="js/rainbowjs/js/rainbow.min.js"></script>
    <script type="text/javascript" src="js/rainbowjs/js/language/generic.js"></script>
    <script type="text/javascript" src="js/rainbowjs/js/language/javascript.js"></script>
{% endblock %}

{% block css_includes %}
    <link rel="stylesheet" type="text/css" href="js/rainbowjs/themes/github.css">
{% endblock %}

{% block navigation %}

    {% include 'swig/common/navigation.html' %}

{% endblock %}

{% block header %}

    <div class="bg-purple-lt">
        <div class="container p-t-b-50 m-t-60">
            <div class="row text-center">
                <div class="col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1">
                    <div class="subheading">Theme development</div>
                    <h2 class="no-m m-t-5 font-thin">Upgrading Themes</h2>
                </div>
            </div>
        </div>
    </div>

{% endblock %}

{% block content %}

    {% include 'swig/blocks/block.knowledgebase.detail.html' %}

    {% include 'swig/blocks/block.knowledgebase.rate.html' %}

{% endblock %}

{% block footer %}

    {% include 'swig/common/footer.html' %}

{% endblock %}