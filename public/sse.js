const eventSource = new EventSource('/sseHandler');

eventSource.onmessage = function (event) {
    console.log('Received:', event.data);
};

eventSource.onerror = function (event) {
    console.error('SSE Error:', event);
    eventSource.close(); // Optionally close on errors
};