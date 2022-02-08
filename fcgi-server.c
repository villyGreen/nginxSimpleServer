#include <stdlib.h>
#include <stdio.h>
#include <fcgiapp.h>

int main() {
    if (FCGX_Init()) {
        return 1;
    }

    FCGX_Request req;
    FCGX_InitRequest(&req, 0, 0);
    while (FCGX_Accept_r(&req) >= 0) {
        FCGX_FPrintF(req.out, "Content-Type: text/html\n\n");
        FCGX_FPrintF(req.out, "<head><title>Hello World!</title>");
        FCGX_FPrintF(req.out, "</head><body>");
        FCGX_FPrintF(req.out, "<p>Hello World!</p>");
        FCGX_FPrintF(req.out, "</body>");
        
        FCGX_Finish_r(&req);
    }
}

