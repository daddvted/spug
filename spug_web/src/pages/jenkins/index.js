import React, { useEffect } from 'react';
import {observer} from 'mobx-react';
import { AuthDiv } from 'components';
import store from './store';



export default observer(function(){
    useEffect(()=>{
        store.fetchRecords()
    }, [])

        return (
            <AuthDiv auth="dashboard.dashboard.view">
                Jenkins Index
            </AuthDiv>
        )

})
