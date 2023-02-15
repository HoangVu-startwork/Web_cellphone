import React from 'react'
import {Outlet} from "react-router-dom"
import Footer from "./Footer"
import Header from "./Header"
import Head from "./Head"
import Headauto from "./Headauto"
import Headfooter from "./Head_footer"
function Layout() {
  return (
    <div className='body_cellphones'>
        {/* <Head /> */}
        <Header />
        <Outlet />
        <Footer />
        <Headauto />
        <Head /> 
        <Headfooter />
    </div>
  )
}

export default Layout