{% set bodyClass = 'bg-lightgrey' %}

{% extends "swig/common/base.html" %}

{% block navigation %}

    {% include 'swig/common/navigation.html' %}

{% endblock %}

{% block header %}

    {% include 'swig/blocks/block.forum.header.html' %}

{% endblock %}

{% block content %}

    <div class="p-t-b-10 b-b-b-l">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 m-t-b-10">
                    <strong>2,434</strong> topics in base
                </div>
                <div class="col-sm-6 text-right m-t-b-10">
                    <ol class="breadcrumb no-p-r-l no-m no-bg no-p">
                        <li><a href="#">Home</a></li>
                        <li class="active">Forum</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="content-padding p-t-20">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    {% for row in dummyDatas.forumItems %}
                        <div class="m-b-50">
                            <div class="row row-gap-10">
                                <div class="col-xs-12">
                                    <div class="subheading m-b-20">{{row.category_name}}</div>
                                </div>
                                {% for topicItem in row.items %}
                                    <div class="col-md-6">  
                                        {% include 'swig/partials/partial.forum.grid.item.html' topicItem %}
                                    </div>
                                {% endfor %}
                            </div>
                            <div class="text-right"><a class="btn btn-default btn-rounded btn-line btn-sm">More <i class="fa fa-angle-right"></i></a></div>
                        </div>
                    {% endfor %} 
                </div>
            </div>  
        </div>
    </div>

{% endblock %}

{% block footer %}

    {% include 'swig/common/footer.html' %}

{% endblock %}