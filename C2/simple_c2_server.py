"""The server that interacts with any clients
"""
import json
from concurrent import futures
from http.server import BaseHTTPRequestHandler, HTTPServer


class handler(BaseHTTPRequestHandler):
    def _set_headers(self):
        #Set headers for success
        self.send_response(200)
        self.end_headers()

    def _set_headers_error(self):
        #Set headers for error
        self.send_response(404)
        self.end_headers()

    def do_GET(self): #Runs on GET command
        self.protocol_version='HTTP/1.1'
        self.send_response(200, 'OK')
        self.send_header('Content-type', 'text/html')
        self.end_headers()
        path = "index.html"
        f = open(path).read()
        self.wfile.write(bytes(f, 'utf-8'))
        

        

def main():
    host = "127.0.0.1" #Set the httpserver ip and port numbers
    port = 54361

    with HTTPServer((host, port), handler) as server:#create threaded server
        print("Starting HTTP Server")
        try:
            # establish connection with client
            server.serve_forever()
        except KeyboardInterrupt: #close down server + save database 
            print("Closing Server")
            server.shutdown()
    return

if __name__ == '__main__':
    main()