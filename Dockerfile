FROM alpine:3.19

# Install dependencies
RUN apk add --no-cache unzip curl

# Download PocketBase
RUN curl -L https://github.com/pocketbase/pocketbase/releases/download/v0.22.0/pocketbase_0.22.0_linux_amd64.zip -o pb.zip \
    && unzip pb.zip \
    && chmod +x pocketbase \
    && rm pb.zip

# Create data directory
RUN mkdir /pb_data

# Expose port
EXPOSE 8080

# Start PocketBase
CMD ["./pocketbase", "serve", "--http=0.0.0.0:8080", "--dir=/pb_data"]
