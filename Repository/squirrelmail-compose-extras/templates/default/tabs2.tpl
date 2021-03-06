<?php

/**
  * tabs2.tpl
  *
  * Template for outputting JavaScript that reorganized the
  * tab order on the compose screen.
  *
  * The following variables are available in this template:
  *
  * string  submit_button_name  The name of the send button
  * boolean use_custom_from_tab_order Whether or not an extra
  *                                   text input for the From
  *                                   address is being shown
  *                                   on screen and should
  *                                   be considered in the tab
  *                                   order.
  *
  * @copyright &copy; 1999-2012 The SquirrelMail Project Team
  * @license http://opensource.org/licenses/gpl-license.php GNU Public License
  * @version $Id$
  * @package squirrelmail
  * @subpackage plugins
  */


// retrieve the template vars
//
extract($t);

if ($use_custom_from_tab_order)
{ ?>
<script language="JavaScript" type="text/javascript">
<!--
    document.compose.custom_from.tabIndex=1;
    document.compose.send_to.tabIndex=2;
    document.compose.send_to_cc.tabIndex=3;
    document.compose.send_to_bcc.tabIndex=4;
    document.compose.subject.tabIndex=5;
    document.compose.body.tabIndex=6;
    document.compose.<?php echo $submit_button_name; ?>.tabIndex=7;
// -->
</script>
<?php } else { ?>
<script language="JavaScript" type="text/javascript">
<!--
    document.compose.send_to.tabIndex=1;
    document.compose.send_to_cc.tabIndex=2;
    document.compose.send_to_bcc.tabIndex=3;
    document.compose.subject.tabIndex=4;
    document.compose.body.tabIndex=5;
    document.compose.<?php echo $submit_button_name; ?>.tabIndex=6;
// -->
</script>
<?php }
