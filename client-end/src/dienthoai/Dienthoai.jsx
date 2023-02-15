import React from 'react'
import {Outlet} from "react-router-dom"
import Footer from "../components/Footer"
import Header from "../components/Header"


function Dienthoai() {
  return (
    <div className='body_cellphones_dienthoai'>
        {/* <Head /> */}
        <Header />
        <Outlet />
        <Footer />
    </div>
  )
}

export default Dienthoai