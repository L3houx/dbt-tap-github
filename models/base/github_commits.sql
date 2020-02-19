with source as (

    select * from {{var('schema')}}.commits

),

renamed as (

    select

/*
        id as commit_id,
        short_id as short_id,
        project_id as project_id,

        parent_ids as parent_ids,

        title as title,
        message as message,

        author_name as author_name,
        author_email as author_email,
        authored_date as authored_date,

        committer_name as committer_name,
        committer_email as committer_email,
        committed_date as committed_date,

        created_at as created_at
*/

        _sdc_repository as _sdc_repository,
        commit_tree as commit_tree,
        comments_url as comments_url,
        commit_message as commit_message,
        commit_committer_date as commit_committer_date,
        commit_tree_url as commit_tree_url,
        commit_comment_count as commit_comment_count,
        parents as parents,
        commit_committer_name as commit_committer_name,
        commit_author as commit_author,
        commit_author_date as commit_author_date,
        sha as sha,
        commit_author_name as commit_author_name,
        commit_tree_sha as commit_tree_sha,
        html_url as html_url,
        commit_url as commit_url,
        commit_committer_email as commit_committer_email,
        url as url,
        commit_author_email as commit_author_email,
        commit_committer as commit_committer,
        commit as commit

    from source

)

select * from renamed