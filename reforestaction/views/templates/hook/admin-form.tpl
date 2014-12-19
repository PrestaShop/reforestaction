{*
* 2007-2013 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2014 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
<form action="{$module_link|escape:'htmlall'}" method="POST" class="form-horizontal" role="form">
	<div class="form-group">
		<label for="company_name" class="control-label col-lg-3">
			{l s='Company name:' mod='reforestaction'}
		</label>
		<div class="margin-form col-lg-3">
			<input type="text" name="company_name" id="company_name" class="form-control"{if $merchant_status != false} disabled="true"{/if} value="{Tools::getValue('company_name')}" title="">
			<sup>*</sup>
		</div>
	</div>
	<div class="form-group">
		<label for="phone" class="control-label col-lg-3">
			{l s='Phone:' mod='reforestaction'}
		</label>
		<div class="margin-form col-lg-3">
			<div class="input-group">
				<span class="input-group-addon">
					<i class="icon-phone"></i>
				</span>
				<input type="text" name="phone" id="phone" class="form-control"{if $merchant_status != false} disabled="true"{/if} value="{Tools::getValue('phone')}" title="">
				<sup>*</sup>
			</div>
		</div>
	</div>
	<div class="form-group">
		<label for="address" class="control-label col-lg-3">
			{l s='Address:' mod='reforestaction'}
		</label>
		<div class="margin-form col-lg-3">
			<textarea rows="5" cols="60" name="address" id="address" class="form-control"{if $merchant_status != false} disabled="true"{/if}>{Tools::getValue('address')}</textarea>
			<sup>*</sup>
		</div>
	</div>
	<div class="form-group">
		<label for="industry" class="control-label col-lg-3">
			{l s='Industry:' mod='reforestaction'}
		</label>
		<div class="margin-form col-lg-3">
			<select name="industry" id="industry" class="form-control"{if $merchant_status != false} disabled="true"{/if}>
				<option value="">-----</option>
				<option value="a">a</option>
			</select>
			<sup>*</sup>
		</div>
	</div>
	<div class="form-group">
		<label for="transaction" class="control-label col-lg-3">
			{l s='Transaction:' mod='reforestaction'}
		</label>
		<div class="margin-form col-lg-3">
			<select name="transaction" id="transaction" class="form-control"{if $merchant_status != false} disabled="true"{/if}>
				<option value="">-----</option>
				<option value="a">a</option>
			</select>
			<sup>*</sup>
		</div>
	</div>
	<div class="form-group">
		<label for="firstname" class="control-label col-lg-3">
			{l s='First name:' mod='reforestaction'}
		</label>
		<div class="margin-form col-lg-3">
			<input type="text" name="firstname" id="firstname" class="form-control"{if $merchant_status != false} disabled="true"{/if} value="{Tools::getValue('firstname')}" title="">
			<sup>*</sup>
		</div>
	</div>
	<div class="form-group">
		<label for="lastname" class="control-label col-lg-3">
			{l s='Last name:' mod='reforestaction'}
		</label>
		<div class="margin-form col-lg-3">
			<input type="text" name="lastname" id="lastname" class="form-control"{if $merchant_status != false} disabled="true"{/if} value="{Tools::getValue('lastname')}" title="">
			<sup>*</sup>
		</div>
	</div>
	<div class="form-group">
		<label for="email" class="control-label col-lg-3">
			{l s='Address email:' mod='reforestaction'}
		</label>
		<div class="margin-form col-lg-3">
			<div class="input-group">
				<span class="input-group-addon">
					<i class="icon-envelope-o"></i>
				</span>
				<input type="text" name="email" id="email" class="form-control"{if $merchant_status != false} disabled="true"{/if} value="{Tools::getValue('email')}" title="">
				<sup>*</sup>
			</div>
		</div>
	</div>
	{if $merchant_status == false}
		<div class="form-group">
			<div class="margin-form col-lg-9 col-lg-offset-3">
				<button type="submit" name="btnSubmit" class="button btn btn-primary">
					{l s='Save' mod='reforestaction'}
				</button>
			</div>
		</div>
	{/if}
	<div class="small"><sup>*</sup> {l s='Required field' mod='reforestaction'}</div>
</form>