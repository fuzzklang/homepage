<script context="module" lang="ts">
	const players: Set<any> = new Set();

	export function stopAll() {
		players.forEach((p) => p.pause());
	}
</script>

<script lang='ts'>
	import { onMount } from 'svelte';

	export let src;

	let player: HTMLAudioElement;

	onMount(() => {
		players.add(player);
	});
</script>

<div>
	<audio bind:this={player} {src} controls>
		<track kind="captions" />
	</audio>
</div>
