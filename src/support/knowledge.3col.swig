{% set bodyClass = 'bg-lightgrey' %}

{% extends "swig/common/base.html" %}

{% block navigation %}

    {% include 'swig/common/navigation.html' %}

{% endblock %}

{% block header %}

    <div class="bg-purple-lt">
            <div class="container p-t-b-50 m-t-60">
                <div class="row text-center">
                    <div class="col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1">
                        <h3 class="no-m m-b-15 font-thin">Knowledge Base</h3>
                        <div class="input-group form-control-header">
                            <input type="text" class="form-control" placeholder="Search something...">
                            <span class="input-group-btn">
                                <button class="btn btn-link m-r-10 btn-rounded">Go</button>
                            </span>
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
                    <strong>2,434</strong> knowledge in base
                </div>
                <div class="col-sm-6 text-right m-t-b-10">
                    <ol class="breadcrumb no-p-r-l no-m no-bg no-p">
                        <li><a href="#">Home</a></li>
                        <li class="active">Knowledgebase</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    
    <div class="content-padding p-t-20">  
        
            {% for row in dummyDatas.knowledgebase %}
                <div class="container xs-no-p-i m-b-20">
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <h3 class="no-m m-b-20">{{row.category_name}}</h3>
                        </div>
                    </div>
                    <div class="row row-gap-10 xs-no-m-i">
                        {% for inrow in row.items %}
                            <div class="col-sm-4 xs-no-p-i">
                                {% include 'swig/partials/partial.knowledge.item.html' inrow %}
                            </div>
                        {% endfor %}
                    </div>
                </div>
            {% endfor %}   
        
    </div>

    {% include 'swig/blocks/block.help.html' %}
    
{% endblock %}

{% block footer %}

    {% include 'swig/common/footer.html' %}

{% endblock %}