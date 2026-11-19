// Writes the day's news image to /output/entry.png. The image is entry.png beside this file, rendered from
// news.html by render.sh. Outside the grader, MAKEFUN_OUTPUT_DIR stands in for /output.
import { copyFileSync } from 'node:fs';
import { join } from 'node:path';

copyFileSync(new URL('./entry.png', import.meta.url), join(process.env.MAKEFUN_OUTPUT_DIR ?? '/output', 'entry.png'));
