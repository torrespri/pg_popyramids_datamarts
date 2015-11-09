EXTENSION = pg_popyramids_datamarts
DATA = sql/pg_popyramids_datamarts--1.0.0.sql
DOCS = doc/pg_popyramids_datamarts.md
PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
