{% 
set bodyClass = 'bg-lightgrey'; 

%}

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
            <div class="row row-gap-10 xs-no-m-i">
                {% for ticketItem in dummyDatas.ticketItems %}
                    <div class="col-sm-4 xs-no-p-i">
                        {% include 'swig/partials/partial.ticketing.grid.item.html' ticketItem %}
                    </div>
                    {% if loop.index%3 == 0 %}
                        </div><div class="row row-gap-10 xs-no-m-i">
                    {% endif %}
                {% endfor %}   
            </div>
        </div>
        {% include 'swig/blocks/block.pagination.btns.html' %}
    </div>
    
{% endblock %}

{% block footer %}

    {% include 'swig/common/footer.html' %}

{% endblock %}