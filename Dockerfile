FROM plexinc/plex:latest

# Copy your Plex configuration file (if you have one)
COPY plex.conf /config/Plex/config.xml

# Mount your media library (replace with your cloud storage mount point)
VOLUME /mnt/media

# Expose the Plex port (8080)
EXPOSE 8080

# Command to run Plex
CMD ["-no-update", "-config-file=/config/Plex/config.xml"]
