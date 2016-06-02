{% extends "swig/common/base.html" %}

{% block navigation %}

    {% include 'swig/common/navigation.html' %}

{% endblock %}

{% block header %}

    {% include 'swig/blocks/block.index.header.html' %}

{% endblock %}

{% block content %}

    {% include 'swig/blocks/block.index.counts.html' %}

    {% include 'swig/blocks/block.whoarewe.html' %}

    <div class="content-padding">
        <div class="container">
            <div class="row">
                <div class="col-md-8 xs-no-p">
                    {% include 'swig/partials/partial.index.main.html' %}
                </div>
                <div class="col-md-4 xs-no-p">
                    {% include 'swig/partials/partial.sidebar.v1.html' %}
                </div>
            </div>
        </div>
    </div>

    {% include 'swig/blocks/block.support.html' %}

{% endblock %}

{% block footer %}

    {% include 'swig/common/footer.html' %}

{% endblock %}