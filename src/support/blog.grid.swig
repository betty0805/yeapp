{% set bodyClass = 'bg-lightgrey' %}
{% set gridsize = 0 %}

{% extends "swig/common/base.html" %}

{% block css_includes %}
    
    <link rel="stylesheet" type="text/css" href="js/owlcarousel/owl-carousel/owl.carousel.css">
    <link rel="stylesheet" type="text/css" href="js/owlcarousel/owl-carousel/owl.theme.css">

{% endblock %}

{% block js_includes %}

    <script src="js/owlcarousel/owl-carousel/owl.carousel.min.js"></script>

    <script>
        $(document).ready(function(){
            $(".owl-carousel").owlCarousel({
                navigation : false, // Show next and prev buttons
                slideSpeed : 300,
                paginationSpeed : 400,
                singleItem:true,
                autoPlay:true,
                pagination:false
                // "singleItem:true" is a shortcut for:
                // items : 1, 
                // itemsDesktop : false,
                // itemsDesktopSmall : false,
                // itemsTablet: false,
                // itemsMobile : false
            });
        });
    </script>

{% endblock %}



{% block navigation %}

    {% include 'swig/common/navigation.html' %}

{% endblock %}

{% block header %}

    {% include 'swig/blocks/block.blog.header.html' %}

{% endblock %}

{% block content %}

    <div class="p-t-b-10 b-b-b-l">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 m-t-b-10">
                    <strong>5,656</strong> articles in base
                </div>
                <div class="col-sm-6 text-right m-t-b-10">
                    <ol class="breadcrumb no-p-r-l no-m no-bg no-p">
                        <li><a href="#">Home</a></li>
                        <li class="active">Blog</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="content-padding p-t-20">
        <div class="container app-grid-panels" >

            {% for blogItem in dummyDatas.blogGridItems %}

                {% if gridsize==0 %}
                    <div class="row">
                {% endif %}

                {% if blogItem.size==5 %}
                    <div class="col-sm-5">
                        {% include 'swig/partials/partial.blog.grid.item.v1.html' blogItem %}
                    </div>
                {% elseif blogItem.size == 6 %}
                    <div class="col-sm-6">
                        {% include 'swig/partials/partial.blog.grid.item.v1.html' blogItem %}
                    </div>
                {% elseif blogItem.size == 4 %}
                    <div class="col-sm-4">
                        {% if blogItem.type=='secondary' %}
                            {% include 'swig/partials/partial.blog.grid.item.v3.html' blogItem %}
                        {% elseif blogItem.type == 'imgcard' %}
                            {% include 'swig/partials/partial.blog.grid.item.v4.html' blogItem %}
                        {% endif %}
                    </div>
                {% elseif blogItem.size == 3 %}
                    <div class="col-sm-3">
                        {% include 'swig/partials/partial.blog.grid.item.v2.html' blogItem %}
                    </div>
                {% endif %}
                
                {% set gridsize = gridsize+blogItem.size %}

                {% if gridsize==12 %}
                    </div>
                    {% set gridsize = 0 %}
                {% endif %}

            {%- endfor %}
            <div class="text-center m-t-15">
                <button class="btn btn-primary btn-line btn-rounded p-r-l-30">Load more</button>
            </div>
        </div>
    </div>

{% endblock %}

{% block footer %}

    {% include 'swig/common/footer.html' %}

{% endblock %}