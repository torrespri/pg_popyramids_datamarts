MODULES = isbn_issn
EXTENSION = pg_popyramids_datamarts
DATA = $(wildcard sql/*--*.sql) sql/$(EXTENSION)--0.1.0.sql: sql/types/*.sql sql/functions/*.sql sql/casts/*.sql sql/materialized_views/*.sql
	cat $^ > $@
DOCS = $(wildcard doc/*.md)
PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
