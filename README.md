Expandable-UITableViewCell-UIStackView
======================================

**An expandable UITableView with dynamic cell heights using UIStackView.**

![An expandable UITableView with dynamic cell heights using UIStackView.](http://i.imgur.com/vgrWILg.gif)

The UIStackView was introduced in iOS 9. It acts as a container for views, laid out horizontally or vertically. It removes the need for AutoLayout constraints in most(not all) cases. :)

If you need to familiarize yourself with UIStackViews, here's Ray Wenderlich's post:
https://www.raywenderlich.com/114552/uistackview-tutorial-introducing-stack-views 


----------

Summary
-------
**First, add a UITableView, a prototype cell, add labels, imageviews etc. inside the cell and add them to a vertical stack via the stack button at the bottom right of the storyboard like so...**

![add a UITableView, a prototype cell, add labels, imageviews etc. inside the cell and add them to a vertical stack via the stack button at the bottom right ](http://i.imgur.com/Hcv8gHe.png)


----------

**IMPORTANT: Make sure you add constraints to the UIStackView with respect to the cell's contentView, or else the dynamic height for cells won't work!**

**Next, populate the cells via** `cellForRowAtIndexPath`

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell") as! CustomTableViewCell
        cell.setValues(dataSource[indexPath.row])
        
        return cell
    }
    func setValues(lyrics: Lyrics) {
        self.titleLabel.text = lyrics.song
        self.subtitleLabel.text = lyrics.artist
        
        self.descriptionLabel.text = lyrics.lyricsSample
        let lyricsShown = lyrics.lyricsShown
        self.descriptionLabel.hidden = !lyricsShown
        
        self.icon.image = lyricsShown ? UIImage(named: "up") : UIImage(named: "down")
    }


----------


**^^^Notice the part inside `setValues()`where the description label is hidden based on a Boolean flag, that's where the magic happens. Now implement the cell press like so...**

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let lyrics = dataSource[indexPath.row]
        let lyricsShown = dataSource[indexPath.row].lyricsShown
        lyrics.lyricsShown = !lyricsShown
        
        tableView.reloadRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
    }


----------

**^^^The Boolean flag which hides/shows the description label is inversed on a cell tap, followed by the table reloading the concerned row. The stackview automatically adjusts its height based on the visibility of its subviews. Speaking of heights...**
**Make sure you add these two bad boys inside `viewDidLoad`**

    //Any non zero value works
    tableView.estimatedRowHeight = 100         tableView.rowHeight = UITableViewAutomaticDimension

**^^^This will take care of the dynamic cell height.**

