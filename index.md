## Rodolfo R. Soldati

<p class="posts">
	{% for post in site.posts %}
	<span>{{ post.date | date_to_string }}</span>. — <a href="{{ post.url }}" title="{{ post.title }}">{{ post.title }}</a>
    {{ post.content }} <p><small>🏷 tags: *{{ post.tags }}*</small></p>
	{% endfor %}
</p>
