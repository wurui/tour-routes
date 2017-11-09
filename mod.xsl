<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.tour-routes">
    	<xsl:param name="title">经典路线</xsl:param>
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-tour-routes" ox-mod="tour-routes">
        	<xsl:if test="$title != ''">
	            <h2><xsl:value-of select="$title"/></h2>
	        </xsl:if>
	        <ul>
	        	<xsl:for-each select="data/tour-routes/i">
		        	<li>
		        		<img src="{img}" class="mainpic"/>
		        		<h3><xsl:value-of select="title"/></h3>
		        		<p>
		        			<xsl:value-of select="days"/>天
		        			<i class="sep">|</i>
		        			<xsl:value-of select="food"/>家美食
		        			<i class="sep">|</i>
		        			<xsl:value-of select="spot"/>个景点
		        		</p>
		        		<p>
		        			<em class="tag"><xsl:value-of select="tag"/></em>
		        			<span class="view-count">
		        				<xsl:value-of select="format-number(view_count div 10000, '#.0')" />万
		        			</span>
		        			<span class="fav-count">
		        				<xsl:value-of select="fav_count"/>
		        			</span>
		        		</p>
		        	</li>
	        	</xsl:for-each>
	        </ul>
        </div>
    </xsl:template>
</xsl:stylesheet>
