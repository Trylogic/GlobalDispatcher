package tl.factory
{

	import tl.actions.ActionDispatcher;
	import tl.actions.IActionLogger;
	import tl.ioc.IoCHelper;

	public class ActionDispatcherFactory
	{
		public static function makeInstance( type : Class, forInstance : Object = null ) : Object
		{
			if ( type == ActionDispatcher )
			{
				var actionDispatcher : ActionDispatcher = ActionDispatcher.getInstance();

				if ( actionDispatcher.logger == null )
				{
					try
					{
						actionDispatcher.setLogger( IoCHelper.resolve( IActionLogger, ActionDispatcherFactory ) );
					} catch ( e : Error )
					{

					}
				}

				if ( forInstance != null )
				{
					actionDispatcher.addHandler( forInstance );
				}

				return actionDispatcher;
			}

			return null;
		}

		public function ActionDispatcherFactory()
		{

		}
	}
}
