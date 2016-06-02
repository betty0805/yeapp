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
    <div class="m-t-60 bg-purple-lt">
        <div class="content-padding">
            <div class="container">
                <div class="row text-center">
                    <div class="col-md-8 col-md-offset-2">
                        <div></div>
                        <h1 class="no-m m-t-b-20 font-bold">AngularJS - HTML enhanced for web apps!</h1>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row b-b-r-l b-b-l-l m-t-20 no-m b-b-t-l text-center font-montserrat">
            <div class="col-sm-3 col-xs-12 no-p b-b-b-l b-b-r-l">
                <div class="p-t-b-10 ">
                    <span class="label label-info font-montserrat h3 no-m label-rounded label-md">JAVASCRIPT</span>
                </div>
            </div>
            <div class="col-sm-3 col-xs-6 no-p text-center b-b-b-l b-b-r-l">
                <div class="p-t-b-10 ">
                    <i class="fa fa-clock-o"></i> 
                    June 11, 2015
                </div>
            </div>
            <div class="col-sm-2 col-xs-6 no-p text-center b-b-b-l b-b-r-l">
                <a class="p-t-b-10 block ">
                    <i class="fa fa-share-square-o"></i> 101 shares
                </a>
            </div>
            <div class="col-sm-2 col-xs-6 no-p text-center b-b-b-l b-b-r-l">
                <div class="p-t-b-10">
                    10 min read
                </div>
            </div>
            <div class="col-sm-2 col-xs-6 no-p text-center b-b-b-l">
                <div class="p-t-b-10">
                    <a class="inline-block m-r-3">
                        <i class="fa fa-comment-o"></i>  3 
                    </a>
                    <a class="inline-block">
                        <i class="fa fa-heart-o"></i> 34
                    </a>
                </div>
            </div>
        </div>
    </div>

    <div class="content-padding">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    {% include 'swig/blocks/block.blog.post.html' %}
                </div>
                <div class="col-md-4">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="text-center">
                                <div><img src="img/avatar7.jpg" class="thumb-lg img-circle"></div>
                                <div class="h4 no-m m-t-b-10">Jonh Doe</div>
                                <div class="m-b-10"><span class="label label-line label-success label-rounded">administrator</span></div>
                            </div>
                        </div>
                        <div class="row no-m text-center b-b-b-l b-b-t-l">
                            <div class="col-xs-4 no-p b-b-r-l">
                                <a class="block p-10">
                                    <i class="fa fa-facebook"></i>
                                </a>
                            </div>
                            <div class="col-xs-4 no-p b-b-r-l">
                                <a class="block p-10">
                                    <i class="fa fa-twitter"></i>
                                </a>
                            </div>
                            <div class="col-xs-4 no-p">
                                <a class="block p-10">
                                    <i class="fa fa-linkedin"></i>
                                </a>
                            </div>
                        </div>
                        <div class="p-10 text-center">
                            <a href="#" class="subheading">ALL POSTS</a>
                        </div>
                    </div>
                    {% include 'swig/partials/partial.sidebar.v1.html' %}
                </div>
            </div>
        </div>
    </div>
    
    

{% endblock %}

{% block footer %}

    {% include 'swig/common/footer.html' %}

{% endblock %}