.class Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "SettingsView.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/widget/SettingsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainMenuExpAdapter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentGroupPosition:I

.field private mListPreference:Landroid/preference/ListPreference;

.field private mNextGroupPosition:I

.field private mPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/camera/widget/SettingsView;


# direct methods
.method public constructor <init>(Lcom/android/camera/widget/SettingsView;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 837
    .local p3, preferences:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    iput-object p1, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 832
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mCurrentGroupPosition:I

    .line 838
    iput-object p3, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mPreferences:Ljava/util/ArrayList;

    .line 839
    iput-object p2, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mContext:Landroid/content/Context;

    .line 840
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 1240
    const/4 v0, 0x0

    return v0
.end method

.method public collapseAll()V
    .locals 3

    .prologue
    .line 848
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 849
    iget-object v1, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    #getter for: Lcom/android/camera/widget/SettingsView;->mMainList_exp:Landroid/widget/ExpandableListView;
    invoke-static {v1}, Lcom/android/camera/widget/SettingsView;->access$200(Lcom/android/camera/widget/SettingsView;)Landroid/widget/ExpandableListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 848
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 850
    :cond_0
    iget-object v1, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    #getter for: Lcom/android/camera/widget/SettingsView;->mMainList_exp:Landroid/widget/ExpandableListView;
    invoke-static {v1}, Lcom/android/camera/widget/SettingsView;->access$200(Lcom/android/camera/widget/SettingsView;)Landroid/widget/ExpandableListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setSelectedGroup(I)V

    .line 851
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mCurrentGroupPosition:I

    .line 852
    return-void
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 856
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 861
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildType(II)I
    .locals 3
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    const/4 v1, 0x0

    .line 987
    iget-object v2, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 988
    .local v0, preference:Landroid/preference/Preference;
    instance-of v2, v0, Landroid/preference/ListPreference;

    if-eqz v2, :cond_1

    .line 994
    :cond_0
    :goto_0
    return v1

    .line 991
    :cond_1
    instance-of v2, v0, Lcom/android/camera/widget/CustomPreference;

    if-eqz v2, :cond_0

    .line 992
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getChildTypeCount()I
    .locals 1

    .prologue
    .line 999
    const/4 v0, 0x2

    return v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    const v6, 0x7f0800b9

    .line 868
    iget-object v3, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    .line 870
    .local v2, preference:Landroid/preference/Preference;
    instance-of v3, v2, Landroid/preference/ListPreference;

    if-eqz v3, :cond_3

    .line 871
    iget-object v3, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 873
    .local v0, entry:[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mListPreference:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 875
    .local v1, index:I
    iget-object v3, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    const v5, 0x7f03002c

    #calls: Lcom/android/camera/widget/SettingsView;->inflateIfNeed(Landroid/view/View;ILandroid/view/ViewGroup;Z)Landroid/view/View;
    invoke-static {v3, p4, v5, p5, v4}, Lcom/android/camera/widget/SettingsView;->access$300(Lcom/android/camera/widget/SettingsView;Landroid/view/View;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    .line 878
    invoke-virtual {p4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aget-object v5, v0, p2

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 880
    const v3, 0x7f08013c

    invoke-virtual {p4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    if-ne p2, v1, :cond_0

    const/4 v4, 0x1

    :cond_0
    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 883
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportFastFrameRecording()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 884
    invoke-virtual {p0, p2}, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 885
    invoke-virtual {p4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v3}, Lcom/android/camera/ViewUtil;->enableTextView(Landroid/widget/TextView;)V

    .line 890
    :cond_1
    :goto_0
    const v3, 0x7f0200cd

    invoke-virtual {p4, v3}, Landroid/view/View;->setBackgroundResource(I)V

    move-object v3, p4

    .line 905
    .end local v0           #entry:[Ljava/lang/CharSequence;
    .end local v1           #index:I
    :goto_1
    return-object v3

    .line 887
    .restart local v0       #entry:[Ljava/lang/CharSequence;
    .restart local v1       #index:I
    :cond_2
    invoke-virtual {p4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v3}, Lcom/android/camera/ViewUtil;->disableTextView(Landroid/widget/TextView;)V

    goto :goto_0

    .line 895
    .end local v0           #entry:[Ljava/lang/CharSequence;
    .end local v1           #index:I
    :cond_3
    instance-of v3, v2, Lcom/android/camera/widget/CustomPreference;

    if-eqz v3, :cond_5

    .line 897
    iget-object v3, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    #getter for: Lcom/android/camera/widget/SettingsView;->mImagePropertyItem:[Lcom/android/camera/widget/ImagePropertyItem;
    invoke-static {v3}, Lcom/android/camera/widget/SettingsView;->access$400(Lcom/android/camera/widget/SettingsView;)[Lcom/android/camera/widget/ImagePropertyItem;

    move-result-object v3

    aget-object v3, v3, p2

    if-nez v3, :cond_4

    .line 898
    iget-object v3, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    #getter for: Lcom/android/camera/widget/SettingsView;->mImagePropertyItem:[Lcom/android/camera/widget/ImagePropertyItem;
    invoke-static {v3}, Lcom/android/camera/widget/SettingsView;->access$400(Lcom/android/camera/widget/SettingsView;)[Lcom/android/camera/widget/ImagePropertyItem;

    move-result-object v3

    new-instance v4, Lcom/android/camera/widget/ImagePropertyItem;

    iget-object v5, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/camera/widget/ImagePropertyItem;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, p2

    .line 899
    iget-object v3, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    #getter for: Lcom/android/camera/widget/SettingsView;->mImagePropertyItem:[Lcom/android/camera/widget/ImagePropertyItem;
    invoke-static {v3}, Lcom/android/camera/widget/SettingsView;->access$400(Lcom/android/camera/widget/SettingsView;)[Lcom/android/camera/widget/ImagePropertyItem;

    move-result-object v3

    aget-object v3, v3, p2

    iget-object v4, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    #getter for: Lcom/android/camera/widget/SettingsView;->mCameraThread:Lcom/android/camera/CameraThread;
    invoke-static {v4}, Lcom/android/camera/widget/SettingsView;->access$500(Lcom/android/camera/widget/SettingsView;)Lcom/android/camera/CameraThread;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Lcom/android/camera/widget/ImagePropertyItem;->initialize(ILcom/android/camera/CameraThread;)V

    .line 903
    :goto_2
    iget-object v3, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    #getter for: Lcom/android/camera/widget/SettingsView;->mImagePropertyItem:[Lcom/android/camera/widget/ImagePropertyItem;
    invoke-static {v3}, Lcom/android/camera/widget/SettingsView;->access$400(Lcom/android/camera/widget/SettingsView;)[Lcom/android/camera/widget/ImagePropertyItem;

    move-result-object v3

    aget-object v3, v3, p2

    goto :goto_1

    .line 901
    :cond_4
    iget-object v3, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    #getter for: Lcom/android/camera/widget/SettingsView;->mImagePropertyItem:[Lcom/android/camera/widget/ImagePropertyItem;
    invoke-static {v3}, Lcom/android/camera/widget/SettingsView;->access$400(Lcom/android/camera/widget/SettingsView;)[Lcom/android/camera/widget/ImagePropertyItem;

    move-result-object v3

    aget-object v3, v3, p2

    invoke-virtual {v3}, Lcom/android/camera/widget/ImagePropertyItem;->updateUILevel()V

    goto :goto_2

    .line 905
    :cond_5
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getChildrenCount(I)I
    .locals 5
    .parameter "groupPosition"

    .prologue
    .line 913
    iget-object v3, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    .line 915
    .local v2, preference:Landroid/preference/Preference;
    instance-of v3, v2, Landroid/preference/ListPreference;

    if-eqz v3, :cond_0

    .line 916
    check-cast v2, Landroid/preference/ListPreference;

    .end local v2           #preference:Landroid/preference/Preference;
    iput-object v2, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mListPreference:Landroid/preference/ListPreference;

    .line 917
    iget-object v3, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 918
    .local v1, entry:[Ljava/lang/CharSequence;
    array-length v0, v1

    .line 919
    .local v0, count:I
    iget-object v3, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    iget-object v4, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    #getter for: Lcom/android/camera/widget/SettingsView;->m_MenuItemHeight:I
    invoke-static {v4}, Lcom/android/camera/widget/SettingsView;->access$700(Lcom/android/camera/widget/SettingsView;)I

    move-result v4

    mul-int/2addr v4, v0

    #setter for: Lcom/android/camera/widget/SettingsView;->m_MenuChildHeight:I
    invoke-static {v3, v4}, Lcom/android/camera/widget/SettingsView;->access$602(Lcom/android/camera/widget/SettingsView;I)I

    .line 929
    .end local v0           #count:I
    .end local v1           #entry:[Ljava/lang/CharSequence;
    :goto_0
    return v0

    .line 923
    .restart local v2       #preference:Landroid/preference/Preference;
    :cond_0
    instance-of v3, v2, Lcom/android/camera/widget/CustomPreference;

    if-eqz v3, :cond_1

    .line 924
    iget-object v3, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    #getter for: Lcom/android/camera/widget/SettingsView;->mImagePropertyItem:[Lcom/android/camera/widget/ImagePropertyItem;
    invoke-static {v3}, Lcom/android/camera/widget/SettingsView;->access$400(Lcom/android/camera/widget/SettingsView;)[Lcom/android/camera/widget/ImagePropertyItem;

    move-result-object v3

    array-length v0, v3

    .line 925
    .restart local v0       #count:I
    iget-object v3, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    iget-object v4, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    #getter for: Lcom/android/camera/widget/SettingsView;->m_ImagePropertyItemHeight:I
    invoke-static {v4}, Lcom/android/camera/widget/SettingsView;->access$800(Lcom/android/camera/widget/SettingsView;)I

    move-result v4

    mul-int/2addr v4, v0

    #setter for: Lcom/android/camera/widget/SettingsView;->m_MenuChildHeight:I
    invoke-static {v3, v4}, Lcom/android/camera/widget/SettingsView;->access$602(Lcom/android/camera/widget/SettingsView;I)I

    goto :goto_0

    .line 929
    .end local v0           #count:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 935
    iget-object v0, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 3

    .prologue
    .line 940
    iget-object v1, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 941
    .local v0, count:I
    iget-object v1, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    iget-object v2, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    #getter for: Lcom/android/camera/widget/SettingsView;->m_MenuItemHeight:I
    invoke-static {v2}, Lcom/android/camera/widget/SettingsView;->access$700(Lcom/android/camera/widget/SettingsView;)I

    move-result v2

    mul-int/2addr v2, v0

    #setter for: Lcom/android/camera/widget/SettingsView;->m_MenuParentHeight:I
    invoke-static {v1, v2}, Lcom/android/camera/widget/SettingsView;->access$902(Lcom/android/camera/widget/SettingsView;I)I

    .line 942
    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 947
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupType(I)I
    .locals 3
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 952
    iget-object v2, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 955
    .local v0, preference:Landroid/preference/Preference;
    instance-of v2, v0, Landroid/preference/ListPreference;

    if-eqz v2, :cond_1

    .line 976
    :cond_0
    :goto_0
    return v1

    .line 960
    :cond_1
    instance-of v2, v0, Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_2

    .line 963
    const/4 v1, 0x1

    goto :goto_0

    .line 965
    :cond_2
    instance-of v2, v0, Lcom/android/camera/widget/CustomPreference;

    if-eqz v2, :cond_3

    .line 968
    const/4 v1, 0x2

    goto :goto_0

    .line 970
    :cond_3
    instance-of v2, v0, Landroid/preference/Preference;

    if-eqz v2, :cond_0

    .line 973
    const/4 v1, 0x3

    goto :goto_0
.end method

.method public getGroupTypeCount()I
    .locals 1

    .prologue
    .line 981
    const/4 v0, 0x4

    return v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1008
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mPreferences:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/preference/Preference;

    .line 1010
    .local v9, preference:Landroid/preference/Preference;
    instance-of v13, v9, Landroid/preference/PreferenceGroup;

    if-eqz v13, :cond_1

    .line 1011
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    iget-object v13, v13, Lcom/android/camera/widget/SettingsView;->mInflater:Landroid/view/LayoutInflater;

    const v14, 0x7f030029

    const/4 v15, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v13, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    move-object v5, v9

    .line 1012
    check-cast v5, Landroid/preference/PreferenceGroup;

    .line 1014
    .local v5, group:Landroid/preference/PreferenceGroup;
    const v13, 0x7f0800b9

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 1015
    .local v12, title:Landroid/widget/TextView;
    invoke-virtual {v5}, Landroid/preference/PreferenceGroup;->getTitle()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1091
    .end local v5           #group:Landroid/preference/PreferenceGroup;
    .end local v12           #title:Landroid/widget/TextView;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    invoke-virtual {v9}, Landroid/preference/Preference;->isEnabled()Z

    move-result v14

    move-object/from16 v0, p3

    #calls: Lcom/android/camera/widget/SettingsView;->setEnabledStateOnViews(Landroid/view/View;Z)V
    invoke-static {v13, v0, v14}, Lcom/android/camera/widget/SettingsView;->access$1300(Lcom/android/camera/widget/SettingsView;Landroid/view/View;Z)V

    .line 1092
    return-object p3

    .line 1017
    :cond_1
    instance-of v13, v9, Landroid/preference/ListPreference;

    if-eqz v13, :cond_5

    move-object v8, v9

    .line 1019
    check-cast v8, Landroid/preference/ListPreference;

    .line 1020
    .local v8, listPref:Landroid/preference/ListPreference;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    const v14, 0x7f03002a

    const/4 v15, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    #calls: Lcom/android/camera/widget/SettingsView;->inflateIfNeed(Landroid/view/View;ILandroid/view/ViewGroup;Z)Landroid/view/View;
    invoke-static {v13, v0, v14, v1, v15}, Lcom/android/camera/widget/SettingsView;->access$300(Lcom/android/camera/widget/SettingsView;Landroid/view/View;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 1023
    const v13, 0x7f0800b9

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 1024
    .restart local v12       #title:Landroid/widget/TextView;
    invoke-virtual {v8}, Landroid/preference/ListPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1025
    const v13, 0x7f08013a

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1028
    .local v11, summary:Landroid/widget/TextView;
    invoke-virtual {v8}, Landroid/preference/ListPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v10

    .line 1029
    .local v10, str:Ljava/lang/CharSequence;
    if-eqz v10, :cond_2

    const-string v13, ""

    invoke-virtual {v10, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    .line 1030
    :cond_2
    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v10

    .line 1031
    :cond_3
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1033
    const v13, 0x7f08013b

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 1034
    .local v6, indicator:Landroid/widget/ImageView;
    if-eqz p2, :cond_4

    .line 1035
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    #getter for: Lcom/android/camera/widget/SettingsView;->mExpand:I
    invoke-static {v13}, Lcom/android/camera/widget/SettingsView;->access$1000(Lcom/android/camera/widget/SettingsView;)I

    move-result v13

    invoke-virtual {v6, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1037
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    #getter for: Lcom/android/camera/widget/SettingsView;->mCollapse:I
    invoke-static {v13}, Lcom/android/camera/widget/SettingsView;->access$1100(Lcom/android/camera/widget/SettingsView;)I

    move-result v13

    invoke-virtual {v6, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1040
    .end local v6           #indicator:Landroid/widget/ImageView;
    .end local v8           #listPref:Landroid/preference/ListPreference;
    .end local v10           #str:Ljava/lang/CharSequence;
    .end local v11           #summary:Landroid/widget/TextView;
    .end local v12           #title:Landroid/widget/TextView;
    :cond_5
    instance-of v13, v9, Landroid/preference/CheckBoxPreference;

    if-eqz v13, :cond_8

    move-object v4, v9

    .line 1042
    check-cast v4, Landroid/preference/CheckBoxPreference;

    .line 1043
    .local v4, ckPref:Landroid/preference/CheckBoxPreference;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    const v14, 0x7f030028

    const/4 v15, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    #calls: Lcom/android/camera/widget/SettingsView;->inflateIfNeed(Landroid/view/View;ILandroid/view/ViewGroup;Z)Landroid/view/View;
    invoke-static {v13, v0, v14, v1, v15}, Lcom/android/camera/widget/SettingsView;->access$300(Lcom/android/camera/widget/SettingsView;Landroid/view/View;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 1047
    const v13, 0x7f0800b9

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 1048
    .restart local v12       #title:Landroid/widget/TextView;
    invoke-virtual {v9}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1049
    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    .line 1050
    .local v3, checked:Z
    const v13, 0x7f08003a

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 1051
    .local v2, checkBox:Landroid/widget/CheckBox;
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1052
    const v13, 0x7f08013a

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1053
    .restart local v11       #summary:Landroid/widget/TextView;
    if-eqz v3, :cond_6

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->getSummaryOn()Ljava/lang/CharSequence;

    move-result-object v13

    :goto_1
    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1056
    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 1057
    .local v7, key:Ljava/lang/String;
    if-eqz v7, :cond_7

    const-string v13, "pref_camera_switch"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1058
    const/16 v13, 0x8

    invoke-virtual {v2, v13}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_0

    .line 1053
    .end local v7           #key:Ljava/lang/String;
    :cond_6
    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->getSummaryOff()Ljava/lang/CharSequence;

    move-result-object v13

    goto :goto_1

    .line 1060
    .restart local v7       #key:Ljava/lang/String;
    :cond_7
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_0

    .line 1063
    .end local v2           #checkBox:Landroid/widget/CheckBox;
    .end local v3           #checked:Z
    .end local v4           #ckPref:Landroid/preference/CheckBoxPreference;
    .end local v7           #key:Ljava/lang/String;
    .end local v11           #summary:Landroid/widget/TextView;
    .end local v12           #title:Landroid/widget/TextView;
    :cond_8
    instance-of v13, v9, Landroid/preference/Preference;

    if-eqz v13, :cond_0

    .line 1064
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    const v14, 0x7f03002a

    const/4 v15, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    #calls: Lcom/android/camera/widget/SettingsView;->inflateIfNeed(Landroid/view/View;ILandroid/view/ViewGroup;Z)Landroid/view/View;
    invoke-static {v13, v0, v14, v1, v15}, Lcom/android/camera/widget/SettingsView;->access$300(Lcom/android/camera/widget/SettingsView;Landroid/view/View;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 1068
    const v13, 0x7f0800b9

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 1069
    .restart local v12       #title:Landroid/widget/TextView;
    invoke-virtual {v9}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1070
    const v13, 0x7f08013a

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1071
    .restart local v11       #summary:Landroid/widget/TextView;
    invoke-virtual {v9}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v10

    .line 1072
    .restart local v10       #str:Ljava/lang/CharSequence;
    instance-of v13, v9, Lcom/android/camera/widget/CustomPreference;

    if-eqz v13, :cond_9

    .line 1073
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    #getter for: Lcom/android/camera/widget/SettingsView;->mMenuHandler:Lcom/android/camera/MenuHandler;
    invoke-static {v13}, Lcom/android/camera/widget/SettingsView;->access$1200(Lcom/android/camera/widget/SettingsView;)Lcom/android/camera/MenuHandler;

    move-result-object v13

    invoke-virtual {v13, v9}, Lcom/android/camera/MenuHandler;->getSummary(Landroid/preference/Preference;)Ljava/lang/String;

    move-result-object v10

    .line 1075
    const v13, 0x7f08013b

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 1076
    .restart local v6       #indicator:Landroid/widget/ImageView;
    if-eqz p2, :cond_b

    .line 1077
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    #getter for: Lcom/android/camera/widget/SettingsView;->mExpand:I
    invoke-static {v13}, Lcom/android/camera/widget/SettingsView;->access$1000(Lcom/android/camera/widget/SettingsView;)I

    move-result v13

    invoke-virtual {v6, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1081
    .end local v6           #indicator:Landroid/widget/ImageView;
    :cond_9
    :goto_2
    if-eqz v10, :cond_a

    const-string v13, ""

    invoke-virtual {v10, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 1082
    :cond_a
    const/16 v13, 0x8

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1079
    .restart local v6       #indicator:Landroid/widget/ImageView;
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    #getter for: Lcom/android/camera/widget/SettingsView;->mCollapse:I
    invoke-static {v13}, Lcom/android/camera/widget/SettingsView;->access$1100(Lcom/android/camera/widget/SettingsView;)I

    move-result v13

    invoke-virtual {v6, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 1084
    .end local v6           #indicator:Landroid/widget/ImageView;
    :cond_c
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1085
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 1099
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 1105
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 4
    .parameter "position"

    .prologue
    const/4 v2, 0x1

    .line 1218
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportFastFrameRecording()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1220
    iget-object v1, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const-string v3, "pref_fast_fps"

    invoke-static {v1, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1221
    .local v0, isFastFrame:Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    #getter for: Lcom/android/camera/widget/SettingsView;->mCameraThread:Lcom/android/camera/CameraThread;
    invoke-static {v1}, Lcom/android/camera/widget/SettingsView;->access$500(Lcom/android/camera/widget/SettingsView;)Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v2

    .line 1234
    .end local v0           #isFastFrame:Z
    :goto_0
    return v1

    .line 1224
    .restart local v0       #isFastFrame:Z
    :cond_1
    iget-object v1, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v3, "pref_set_resolution"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1225
    iget-object v1, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    #getter for: Lcom/android/camera/widget/SettingsView;->mMenuHandler:Lcom/android/camera/MenuHandler;
    invoke-static {v1}, Lcom/android/camera/widget/SettingsView;->access$1200(Lcom/android/camera/widget/SettingsView;)Lcom/android/camera/MenuHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera/MenuHandler;->getMenuResolutionItem(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "1080p"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    #getter for: Lcom/android/camera/widget/SettingsView;->mMenuHandler:Lcom/android/camera/MenuHandler;
    invoke-static {v1}, Lcom/android/camera/widget/SettingsView;->access$1200(Lcom/android/camera/widget/SettingsView;)Lcom/android/camera/MenuHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera/MenuHandler;->getMenuResolutionItem(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "QCIF"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1229
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .end local v0           #isFastFrame:Z
    :cond_3
    move v1, v2

    .line 1234
    goto :goto_0
.end method

.method public menuExpandCollapseHandler(I)V
    .locals 2
    .parameter "groupPosition"

    .prologue
    const/4 v1, -0x1

    .line 1114
    iget v0, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mCurrentGroupPosition:I

    if-ne v0, v1, :cond_0

    .line 1115
    iget-object v0, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    #getter for: Lcom/android/camera/widget/SettingsView;->mMainList_exp:Landroid/widget/ExpandableListView;
    invoke-static {v0}, Lcom/android/camera/widget/SettingsView;->access$200(Lcom/android/camera/widget/SettingsView;)Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 1116
    iget-object v0, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    #getter for: Lcom/android/camera/widget/SettingsView;->mMainList_exp:Landroid/widget/ExpandableListView;
    invoke-static {v0}, Lcom/android/camera/widget/SettingsView;->access$200(Lcom/android/camera/widget/SettingsView;)Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->setSelectedGroup(I)V

    .line 1117
    iput p1, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mCurrentGroupPosition:I

    .line 1129
    :goto_0
    return-void

    .line 1119
    :cond_0
    iget v0, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mCurrentGroupPosition:I

    if-ne v0, p1, :cond_1

    .line 1120
    iget-object v0, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    #getter for: Lcom/android/camera/widget/SettingsView;->mMainList_exp:Landroid/widget/ExpandableListView;
    invoke-static {v0}, Lcom/android/camera/widget/SettingsView;->access$200(Lcom/android/camera/widget/SettingsView;)Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 1121
    iput v1, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mCurrentGroupPosition:I

    goto :goto_0

    .line 1124
    :cond_1
    iget-object v0, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    #getter for: Lcom/android/camera/widget/SettingsView;->mMainList_exp:Landroid/widget/ExpandableListView;
    invoke-static {v0}, Lcom/android/camera/widget/SettingsView;->access$200(Lcom/android/camera/widget/SettingsView;)Landroid/widget/ExpandableListView;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mCurrentGroupPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 1125
    iget-object v0, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    #getter for: Lcom/android/camera/widget/SettingsView;->mMainList_exp:Landroid/widget/ExpandableListView;
    invoke-static {v0}, Lcom/android/camera/widget/SettingsView;->access$200(Lcom/android/camera/widget/SettingsView;)Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 1126
    iget-object v0, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    #getter for: Lcom/android/camera/widget/SettingsView;->mMainList_exp:Landroid/widget/ExpandableListView;
    invoke-static {v0}, Lcom/android/camera/widget/SettingsView;->access$200(Lcom/android/camera/widget/SettingsView;)Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->setSelectedGroup(I)V

    .line 1127
    iput p1, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mCurrentGroupPosition:I

    goto :goto_0
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 5
    .parameter "parent"
    .parameter "view"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1190
    iget-object v4, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 1192
    .local v1, preference:Landroid/preference/Preference;
    instance-of v4, v1, Landroid/preference/ListPreference;

    if-nez v4, :cond_1

    .line 1213
    .end local v1           #preference:Landroid/preference/Preference;
    :cond_0
    :goto_0
    return v2

    .line 1195
    .restart local v1       #preference:Landroid/preference/Preference;
    :cond_1
    check-cast v1, Landroid/preference/ListPreference;

    .end local v1           #preference:Landroid/preference/Preference;
    iput-object v1, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mListPreference:Landroid/preference/ListPreference;

    .line 1197
    invoke-virtual {p0, p4}, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1200
    iget-object v2, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mListPreference:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 1201
    .local v0, current:I
    if-eq p4, v0, :cond_2

    .line 1202
    iget-object v2, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v2, p4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1203
    invoke-virtual {p0}, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->notifyDataSetChanged()V

    .line 1204
    iget-object v2, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    iget-object v4, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mListPreference:Landroid/preference/ListPreference;

    #calls: Lcom/android/camera/widget/SettingsView;->updateListPreference(Landroid/preference/Preference;I)V
    invoke-static {v2, v4, p4}, Lcom/android/camera/widget/SettingsView;->access$1700(Lcom/android/camera/widget/SettingsView;Landroid/preference/Preference;I)V

    .line 1205
    iget-object v2, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    #getter for: Lcom/android/camera/widget/SettingsView;->mMainAdapter_exp:Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;
    invoke-static {v2}, Lcom/android/camera/widget/SettingsView;->access$000(Lcom/android/camera/widget/SettingsView;)Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->notifyDataSetChanged()V

    move v2, v3

    .line 1206
    goto :goto_0

    .line 1210
    :cond_2
    iget-object v2, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    #getter for: Lcom/android/camera/widget/SettingsView;->m_EventManager:Lcom/android/camera/EventManager;
    invoke-static {v2}, Lcom/android/camera/widget/SettingsView;->access$1600(Lcom/android/camera/widget/SettingsView;)Lcom/android/camera/EventManager;

    move-result-object v2

    const-string v4, "SameMenuItem.Selected"

    invoke-virtual {v2, v4}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    move v2, v3

    .line 1213
    goto :goto_0
.end method

.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 6
    .parameter "parent"
    .parameter "view"
    .parameter "groupPosition"
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    .line 1134
    iget-object v3, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    .line 1136
    .local v2, preference:Landroid/preference/Preference;
    invoke-virtual {v2}, Landroid/preference/Preference;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1160
    .end local v2           #preference:Landroid/preference/Preference;
    :goto_0
    return v4

    .line 1139
    .restart local v2       #preference:Landroid/preference/Preference;
    :cond_0
    instance-of v3, v2, Landroid/preference/ListPreference;

    if-eqz v3, :cond_1

    .line 1140
    check-cast v2, Landroid/preference/ListPreference;

    .end local v2           #preference:Landroid/preference/Preference;
    iput-object v2, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mListPreference:Landroid/preference/ListPreference;

    .line 1141
    invoke-virtual {p0, p3}, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->menuExpandCollapseHandler(I)V

    goto :goto_0

    .line 1143
    .restart local v2       #preference:Landroid/preference/Preference;
    :cond_1
    instance-of v3, v2, Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_4

    move-object v1, v2

    .line 1147
    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 1148
    .local v1, ckPref:Landroid/preference/CheckBoxPreference;
    iget-object v5, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v4

    :goto_1
    #calls: Lcom/android/camera/widget/SettingsView;->updateCheckBoxPreference(Landroid/preference/Preference;Z)V
    invoke-static {v5, v1, v3}, Lcom/android/camera/widget/SettingsView;->access$1400(Lcom/android/camera/widget/SettingsView;Landroid/preference/Preference;Z)V

    .line 1149
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 1150
    .local v0, checked:Z
    const v3, 0x7f08003a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1151
    const v3, 0x7f08013a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->getSummaryOn()Ljava/lang/CharSequence;

    move-result-object v5

    :goto_2
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1153
    invoke-virtual {p0}, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1148
    .end local v0           #checked:Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 1151
    .restart local v0       #checked:Z
    :cond_3
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->getSummaryOff()Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_2

    .line 1155
    .end local v0           #checked:Z
    .end local v1           #ckPref:Landroid/preference/CheckBoxPreference;
    :cond_4
    instance-of v3, v2, Lcom/android/camera/widget/CustomPreference;

    if-eqz v3, :cond_5

    .line 1156
    invoke-virtual {p0, p3}, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->menuExpandCollapseHandler(I)V

    goto :goto_0

    .line 1159
    :cond_5
    iget-object v3, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    #calls: Lcom/android/camera/widget/SettingsView;->updatePreference(Landroid/preference/Preference;)V
    invoke-static {v3, v2}, Lcom/android/camera/widget/SettingsView;->access$1500(Lcom/android/camera/widget/SettingsView;Landroid/preference/Preference;)V

    goto :goto_0
.end method

.method public onGroupCollapsed(I)V
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 1175
    invoke-super {p0, p1}, Landroid/widget/BaseExpandableListAdapter;->onGroupCollapsed(I)V

    .line 1177
    iget v0, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mNextGroupPosition:I

    if-ne p1, v0, :cond_0

    .line 1178
    iget-object v0, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/widget/SettingsView;->m_MenuChildHeight:I
    invoke-static {v0, v1}, Lcom/android/camera/widget/SettingsView;->access$602(Lcom/android/camera/widget/SettingsView;I)I

    .line 1180
    iget-object v0, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    #getter for: Lcom/android/camera/widget/SettingsView;->m_EventManager:Lcom/android/camera/EventManager;
    invoke-static {v0}, Lcom/android/camera/widget/SettingsView;->access$1600(Lcom/android/camera/widget/SettingsView;)Lcom/android/camera/EventManager;

    move-result-object v0

    const-string v1, "Menu.Collapsed"

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    .line 1185
    :cond_0
    return-void
.end method

.method public onGroupExpanded(I)V
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 1166
    invoke-super {p0, p1}, Landroid/widget/BaseExpandableListAdapter;->onGroupExpanded(I)V

    .line 1167
    iput p1, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mNextGroupPosition:I

    .line 1170
    iget-object v0, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    #getter for: Lcom/android/camera/widget/SettingsView;->m_EventManager:Lcom/android/camera/EventManager;
    invoke-static {v0}, Lcom/android/camera/widget/SettingsView;->access$1600(Lcom/android/camera/widget/SettingsView;)Lcom/android/camera/EventManager;

    move-result-object v0

    const-string v1, "Menu.Expanded"

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    .line 1171
    return-void
.end method

.method public updateAdapter(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 843
    .local p1, preferences:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    iput-object p1, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mPreferences:Ljava/util/ArrayList;

    .line 844
    invoke-virtual {p0}, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->notifyDataSetChanged()V

    .line 845
    return-void
.end method
