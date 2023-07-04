from django.shortcuts import render

def index(request):
    """Render the landing page for the publish aoo."""
    return render(request, 'publish/index.html')