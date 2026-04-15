# --- SOVEREIGN AI LAB DEPENDENCIES ---
# Now your existing commands will work
USER root

# 1. Purge the old hardcoded plugin and install the updated 1.3.1 version exactly where the API looks for it
RUN rm -rf /opt/yt_plugins/bgutil/* && \
    python3 -m pip install --upgrade --target /opt/yt_plugins/bgutil bgutil-ytdlp-pot-provider

# 2. Upgrade yt-dlp to the latest version globally
RUN python3 -m pip install --user --upgrade --force-reinstall yt-dlp
# -------------------------------------

# (Keep the original CMD or ENTRYPOINT that was already at the bottom here)
CMD ["/bin/tini", "--", "./run.sh"]
