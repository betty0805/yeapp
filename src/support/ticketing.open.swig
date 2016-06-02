{% set bodyClass = 'bg-white' %}
{% extends "swig/common/base.html" %}

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
    <div class="img-cover img-cover-yellow" style="background-image: url('img/bgimg/big/3.jpg')">
        <div class="container content-padding m-t-60">
            <div class="row text-center">
                <div class="col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1">
                    <h2 class="no-m font-thin">YeApp customer care</h2>
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

    <div class="content-padding p-t-20">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    {% include 'swig/partials/partial.ticketing.open.html' %}
                </div>
                <div class="col-md-4">
                    {% include 'swig/partials/partial.sidebar.v1.html' %}
                </div>
            </div>
        </div>
    </div>    

{% endblock %}

{% block footer %}

    {% include 'swig/common/footer.html' %}

{% endblock %}