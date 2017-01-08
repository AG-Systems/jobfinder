$( document ).ready(function() {
    function send(company, body, email)
    {
        
        $.post("/connections?connection[talent]=" + email + "&connection[company]=" + company + "&connection[body]=" + body)
    }

$(".skeleton").remove();
  var counter = 0;
  const divStyle = {
      width: 350,
      margin: 0
    };
    var Tracker = React.createClass({
      render() {
        return (
                <div id="main">
                      <div className="card" >
                        <div className="card-block">
                          <h4 className="card-title">Likes left: {this.props.likes}</h4>
                          {/* <p className="card-text">Counter: </p> */}
                        </div>
                      </div>
                  </div>
        )
      }
    });
    var List = React.createClass({
        like: function () 
        {
            interested = $("#company-title").text();
            desc = $("#company-desc").text();
            send(interested, desc, current_email);
            counter += 1;
            likes--;
            this.forceUpdate();
            
             // $("#main").hide();
            //  $("#main").fadeIn(1000);
            
        },
        dislike: function () 
        {
            counter += 1;
            this.forceUpdate();
        },
        render: function() {
          let userMessage;
          if (likes > 0) 
          {
            userMessage =( 
                <button type='button' onClick={this.like} className="btn btn-primary"> Yes, I'm Interested </button>
            ) 
          }
          else
          {
            userMessage = (
                <button type='button' className="btn btn-primary disabled"> Yes, I'm Interested </button>
            )
          }
          return (
            <div>
                <div id="main" className={this.props.list[counter].id }>
                      <div className="card" >
                        <img className="card-img-top" src={this.props.list[counter].image.url} height="150" width="350" alt="Card image cap" />
                        <div className="card-block">
                          <h4 className="card-title" id="company-title">{ this.props.list[counter].title }</h4>
                          <p className="card-text" id="company-desc">{ this.props.list[counter].body }</p>
                          {userMessage}
                          <button type='button' onClick={this.dislike} className="btn btn-danger"> No, Skip </button>
                        </div>
                      </div>
                  </div>
                  <Tracker likes={likes} />
            </div>
          )
        }
      });
    var Playlist = React.createClass({
      render() {
        return (
          <div>
            <List list={post} />
          </div>
        )
      }
    });
    
    ReactDOM.render(
      <Playlist/>, 
      document.getElementById('container')
    );
});