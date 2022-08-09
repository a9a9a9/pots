package com.proj.pots.party.dto;

public class CommentListDTO {

	private PartyRegDTO party;
	private PartyCommentDTO party_comment;
	
	public PartyRegDTO getParty() {
		return party;
	}
	public void setParty(PartyRegDTO party) {
		this.party = party;
	}
	public PartyCommentDTO getParty_comment() {
		return party_comment;
	}
	public void setParty_comment(PartyCommentDTO party_comment) {
		this.party_comment = party_comment;
	}
	
}
