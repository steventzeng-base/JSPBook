package tw.com.javaworld.CH11;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletResponseWrapper;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.util.zip.GZIPOutputStream;

public class GZIPEncodeFilter implements Filter {

    private static String getGZIPEncoding(HttpServletRequest request) {
        String acceptEncoding = request.getHeader("Accept-Encoding");
        if (acceptEncoding == null)
            return null;
        acceptEncoding = acceptEncoding.toLowerCase();
        if (acceptEncoding.indexOf("x-gzip") >= 0) {
            return "x-gzip";
        }
        if (acceptEncoding.indexOf("gzip") >= 0) {
            return "gzip";
        }
        return null;
    }

    public void init(FilterConfig filterConfig) {
    }

    public void doFilter(
            ServletRequest request,
            ServletResponse response,
            FilterChain chain)
            throws IOException, ServletException {
        String transferEncoding = getGZIPEncoding((HttpServletRequest) request);
        if (transferEncoding == null) {
            chain.doFilter(request, response);
        } else {
            ((HttpServletResponse) response).setHeader(
                    "Content-Encoding",
                    transferEncoding);
            GZIPEncodableResponse wrappedResponse =
                    new GZIPEncodableResponse((HttpServletResponse) response);
            chain.doFilter(request, wrappedResponse);
            wrappedResponse.flush();
        }
    }

    public void destroy() {
    }

    private class GZIPEncodableResponse extends HttpServletResponseWrapper {
        private GZIPServletStream wrappedOut;
        private PrintWriter wrappedWriter;

        public GZIPEncodableResponse(HttpServletResponse response)
                throws IOException {
            super(response);
            wrappedOut = new GZIPServletStream(response.getOutputStream());
        }

        public ServletOutputStream getOutputStream() throws IOException {
            return wrappedOut;
        }

        public PrintWriter getWriter() throws IOException {
            if (wrappedWriter == null) {
                wrappedWriter =
                        new PrintWriter(
                                new OutputStreamWriter(
                                        getOutputStream(),
                                        getCharacterEncoding()));
            }
            return wrappedWriter;
        }

        public void flush() throws IOException {
            if (wrappedWriter != null) {
                wrappedWriter.flush();
            }
            wrappedOut.finish();
        }
    }

    private class GZIPServletStream extends ServletOutputStream {
        private GZIPOutputStream outputStream;

        public GZIPServletStream(OutputStream source) throws IOException {
            outputStream = new GZIPOutputStream(source);
        }

        public void finish() throws IOException {
            outputStream.finish();
        }

        public void write(byte[] buf) throws IOException {
            outputStream.write(buf);
        }

        public void write(byte[] buf, int off, int len) throws IOException {
            outputStream.write(buf, off, len);
        }

        public void write(int c) throws IOException {
            outputStream.write(c);
        }

        public void flush() throws IOException {
            outputStream.flush();
        }

        public void close() throws IOException {
            outputStream.close();
        }
    }
}
