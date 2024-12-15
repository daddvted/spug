import React, { useEffect } from 'react';
import {observer} from 'mobx-react';
import { AuthDiv, Breadcrumb, SearchForm } from 'components';
import store from './store';
import { Input } from 'antd';



export default observer(function(){
    useEffect(()=>{
        store.fetchRecords()
    }, [])

    return (
      <AuthDiv auth="dashboard.dashboard.view">
        <Breadcrumb>
          <Breadcrumb.Item>首页</Breadcrumb.Item>
          <Breadcrumb.Item>Jenkins任务</Breadcrumb.Item>
        </Breadcrumb>
        <SearchForm>
          <SearchForm.Item span={12} title="名称">
            <Input allowClear value={store.job_name} onChange={e => store.job_name = e.target.value} placeholder='Jenkins任务名' />
          </SearchForm.Item>
        </SearchForm>
            Jenkins Index
      </AuthDiv>
    )
})
