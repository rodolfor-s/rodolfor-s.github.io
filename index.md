## 📰 Bulletin

<div class="posts">
    {% for post in site.posts %}
        <span>{{ post.date | date_to_string }}</span>. — <a href="{{ post.url }}" title="{{ post.title }}">{{ post.title }}</a>
        <br/>
        {{ post.content }}
    <hr>
    {% endfor %}
</div>
