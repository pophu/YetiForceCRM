{*<!-- {[The file is published on the basis of YetiForce Public License 3.0 that can be found in the following directory: licenses/LicenseEN.txt or yetiforce.com]} -->*}
{strip}
	<div class="tpl-ConditionBuilder-Currency input-group">
		{assign var="BASE_CURRENCY_SYMBOL" value=\vtlib\Functions::getCurrencySymbolandRate(CurrencyField::getDBCurrencyId())}
		{assign var="SYMBOL_PLACEMENT" value=$USER_MODEL->currency_symbol_placement}
		{if $SYMBOL_PLACEMENT neq '1.0$'}
			<span class="input-group-prepend row">
				<span class="input-group-text">{$BASE_CURRENCY_SYMBOL.symbol}</span>
			</span>
		{/if}
		<input class="form-control js-condition-builder-value"
			   data-js="val"
			   title="{\App\Language::translate($FIELD_MODEL->getFieldLabel(), $FIELD_MODEL->getModuleName())}"
			   value="{\App\Purifier::encodeHtml($VALUE)}"
			   autocomplete="off"/>
		{if $SYMBOL_PLACEMENT eq '1.0$'}
			<span class="input-group-append row">
				<span class="input-group-text">{$BASE_CURRENCY_SYMBOL.symbol}</span>
			</span>
		{/if}
	</div>
{/strip}