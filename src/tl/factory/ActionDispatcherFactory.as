package tl.factory
{
	import tl.actions.ActionDispatcher;

	public class ActionDispatcherFactory
	{
		public static function makeInstance( type:Class, forInstance:Object = null ):Object
		{
			if ( type == ActionDispatcher )
			{
				var actionDispatcher:ActionDispatcher = ActionDispatcher.getInstance();

				if ( forInstance != null ) actionDispatcher.addHandler( forInstance );

				return actionDispatcher;
			}

			return null;
		}
	}
}
