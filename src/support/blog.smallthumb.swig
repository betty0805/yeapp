{% set seq = [1, 2, 3, 4, 5] %}
{% set bodyClass = 'bg-white' %}

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
                    <strong>4,555</strong> articles in base
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
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    {% for blogItem in dummyDatas.blogItems %}
                        {% include 'swig/blocks/block.blog.smallthumb.item.html' blogItem %}
                        <hr class="m-t-b-50"/>
                    {%- endfor %}
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <button class="btn btn-line btn-default btn-rounded btn-sm pull-left" disabled><i class="fa fa-angle-left"></i> Prev</button>
                            <span class="text-muted inline-block m-t-5">1/10.</span>
                            <button class="btn btn-line btn-default btn-rounded btn-sm pull-right">Next <i class="fa fa-angle-right"></i></button>
                        </div>
                    </div>
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