// Initialize own js code
import { initMovies } from './movies.js';
initMovies();


// Initialize external libraries
import { initSortable } from './init-sortable';
initSortable();

import { initMarkdown } from './init-markdown';
initMarkdown();

import $ from 'jquery';
import 'select2';

$('#country').select2({ width: '100%' });
