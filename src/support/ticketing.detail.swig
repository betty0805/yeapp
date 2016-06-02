{% set bodyClass = 'bg-lightgrey' %}

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

    <div class="img-cover img-cover-light" style="background-image: url('img/bgimg/big/30.jpg')">
        <div class="container p-t-b-50 m-t-60">
            <div class="row text-center">
                <div class="col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1">
                    <div class="m-t-b-15">
                        <div class="subheading">TI-000010</div>
                        <h1 class="no-m font-thin">Houston we have a problem</h1>
                        <div class="h4 no-m m-t-3 text-muted m-b-10">1 day ago</div>
                        <span class="label label-success inline-block label-line label-rounded">Solved</span>
                    </div>
                </div>
            </div>
        </div>
    </div>

{% endblock %}

{% block content %}
    <div class="p-t-b-10 b-b-b-l">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 m-t-b-10">
                    <strong>10,000</strong> tickets in base
                </div>
                <div class="col-sm-6 text-right m-t-b-10">
                    <ol class="breadcrumb no-p-r-l no-m no-bg no-p">
                        <li><a href="#">Home</a></li>
                        <li class="active">Tickets</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    
    {% include 'swig/blocks/block.ticketing.detail.html' %}
    <div class="content-padding b-b-t-l">
    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-1">
                {% include 'swig/blocks/block.comment.html' %}
            </div>
        </div>
    </div>
</div>

{% include 'swig/blocks/block.help.html' %}

{% endblock %}

{% block footer %}

    {% include 'swig/common/footer.html' %}

{% endblock %}