import { read } from '$app/server';

import audiofile from '/media/stabilia.flac';

const audio = read(audiofile)

export function GET() {
    return audio
}
