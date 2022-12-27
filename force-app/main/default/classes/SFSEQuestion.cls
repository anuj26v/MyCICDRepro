public class SFSEQuestion{
    public String title;
    public String link;
    public Integer votes;
    public SFSEQuestion(){
    }
    public Boolean isComplete(){
        return title != null && link != null && votes != null;
    }
    public String getTitle(){
        return title;
    }
    public void setTitle(String title){
        this.title = title;
    }
    public String getLink(){
        return link;
    }
    public void setLink(String link){
        this.link = link;
    }
    public Integer getVotes(){
         return votes;
    }
    public void setVotes(Integer votes){
          this.votes = votes;
    }
}