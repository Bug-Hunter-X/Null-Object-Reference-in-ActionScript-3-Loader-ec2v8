function handleComplete(event:Event):void {
  var loadedSWF:MovieClip = event.target.content as MovieClip;

  // Check if the child MovieClip exists before accessing it
  if (loadedSWF && loadedSWF.myChildMC) {
    var myChild:MovieClip = loadedSWF.myChildMC;
    trace(myChild.someProperty);
  } else {
    // Handle the case where the child MovieClip is missing
    trace("Child MovieClip 'myChildMC' not found in loaded SWF.");
    // Implement alternative logic or error reporting
  }
} 
//Alternative Solution using try-catch block
function handleComplete(event:Event):void {
  try{
    var loadedSWF:MovieClip = event.target.content as MovieClip;
    var myChild:MovieClip = loadedSWF.myChildMC;
    trace(myChild.someProperty);
  } catch (e:Error) {
    trace("Error accessing child MovieClip: "+ e.message);
  }
} 