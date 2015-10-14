FROM progrium/buildstep
EXPOSE 8000

ADD run.sh /run.sh
CMD ["exec", "run.sh"]
