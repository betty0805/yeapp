{% set seq = [1, 2, 3, 4, 5] %}
{% set bodyClass = 'bg-lightgrey' %}

{% extends "swig/common/base.html" %}

{% block navigation %}

    {% include 'swig/common/navigation.html' %}

{% endblock %}

{% block header %}

    {% include 'swig/blocks/block.ticketing.list.header.html' %}

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

    <div class="content-padding p-t-10">  
        {% include 'swig/blocks/block.ticketing.list.breadcrumb.html' %}
        <div class="container xs-no-p-i">
            <div class="row xs-no-m-i">
                <div class="col-xs-12 xs-no-p-i">
                    <div class="hidden-sm hidden-xs">
                        <div class="panel">
                            <div class="panel-body p-t-b-10 p-r-l-30">
                                <div class="row no-m">
                                    <div class="col-md-2 no-p">
                                        <span class="subheading text-muted">data</span>
                                    </div>
                                    <div class="col-md-7 no-p">
                                        <span class="subheading text-muted">details</span>
                                    </div>
                                    <div class="col-md-2 no-p">
                                        <span class="subheading text-muted">assignee</span>
                                    </div>
                                    <div class="col-md-1 no-p">
                                        <span class="subheading text-muted">more</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    {% for ticketItem in dummyDatas.ticketItems %}
                        {% include 'swig/partials/partial.ticketing.list.item.html' ticketItem %}
                    {% endfor %} 

                </div>
            </div>
        </div>
        {% include 'swig/blocks/block.pagination.btns.html' %}  
    </div>      
    
    

{% endblock %}

{% block footer %}

    {% include 'swig/common/footer.html' %}

{% endblock %}