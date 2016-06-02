{% extends "swig/common/base.html" %}

{% block navigation %}

    {% include 'swig/common/navigation.html' %}

{% endblock %}

{% block header %}
    <div class="img-cover img-cover-dark m-t-60 text-white" style="background-image: url('img/bgimg/big/16.jpg')">
        {% include 'swig/blocks/block.blog.fullwidth.item.main.html' dummyDatas.blogItems[0] %}
    </div>
{% endblock %}

{% block content %}

    {% for blogItem in dummyDatas.blogItems %}

        {% if loop.index%2 %}
            {% set helperClass = '' %}
        {% else %}
            {% set helperClass = 'bg-lightgrey' %}
        {% endif %}
        
        {% include 'swig/blocks/block.blog.fullwidth.item.html' blogItem %}
    
    {%- endfor %}
    

{% endblock %}

{% block footer %}

    {% include 'swig/common/footer.html' %}

{% endblock %}