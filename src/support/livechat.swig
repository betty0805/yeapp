{% set bodyClass = 'bg-white' %}
{% extends "swig/common/base.html" %}

{% block navigation %}

    {% include 'swig/common/navigation.html' %}

{% endblock %}

{% block header %}
    <div class="img-cover img-cover-light" style="background-image: url('img/bgimg/big/3.jpg')">
        <div class="container content-padding m-t-60">
            <div class="row text-center">
                <div class="col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1">
                    <h2 class="no-m font-thin">YeApp live chat</h2>
                </div>
            </div>
        </div>
    </div>
{% endblock %}

{% block content %}

    <div class="content-padding">
        <div class="container xs-no-p-i">
            <div class="row xs-no-m-i">
                <div class="col-md-8 col-md-offset-2 xs-no-p-i">
                    <div class="panel panel-default">
                        <div class="m-b-20">
                            <div class="p-20 bg-lightgrey">
                                <h3 class="no-m"><i class="fa fa-comment-o"></i> <span class="font-normal">Live</span> Support Chat <i class="fa fa-circle-o pull-right text-success inline-block m-t-10 text-md" style="font-size:16px"></i></h3>
                            </div>
                            <div class="p-20 p-t-b-10 b-b-b-l">
                                <h4 class="no-m">You are chatting with <span class="font-normal">Support Team</span></h4>
                            </div>
                        </div>
                        <div class="panel-body">
                            {% include 'swig/blocks/block.chat.html' %}
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
     
    {% include 'swig/blocks/block.support.html' %}

{% endblock %}

{% block footer %}

    {% include 'swig/common/footer.html' %}

{% endblock %}