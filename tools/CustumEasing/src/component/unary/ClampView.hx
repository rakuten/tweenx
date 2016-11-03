package component.unary;
import api.react.React;
import api.react.ReactComponent;
import api.react.ReactComponent.ReactComponentOfProps;
import component.basic.NumberInputView;
import component.complex.ComplexEasingId;
import core.RootContext;
import core.localize.ResourceKey;
import tweenxcore.expr.ComplexEasingKind;


class ClampView extends ReactComponentOfProps<ClampProps>
{
	public function new(props:ClampProps) 
	{
		super(props);
	}
	
	override public function render():ReactComponent 
	{
		return React.createElement(
			"div",
			{
				className: "param-group"
			}, 
			NumberInputView.createElement(
				{
					name: props.context.localize.resource.common(ResourceKey.Min),
					value: props.min,
					id: props.id.numberInputId(0),
					context: props.context
				}
			),
			NumberInputView.createElement(
				{
					name: props.context.localize.resource.common(ResourceKey.Max),
					value: props.max,
					id: props.id.numberInputId(1),
					context: props.context
				}
			)
		);
	}
}

typedef ClampProps =
{
	easing: ComplexEasingKind,
	min: Float,
	max: Float,
	id: ComplexEasingId,
	context: RootContext
}