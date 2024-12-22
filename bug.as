function handleComplete(event:Event):void {
  // Assuming 'event.target' is a Loader that loaded a SWF file
  var loadedSWF:MovieClip = event.target.content as MovieClip;

  // Accessing a child MovieClip that might not exist
  var myChild:MovieClip = loadedSWF.myChildMC;

  // This line will throw an error if 'myChild' is null (child MovieClip not found)
  trace(myChild.someProperty); // Error: Null object reference
}